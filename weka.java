
package mla7;
import weka.core.Instances;
import weka.classifiers.Evaluation;
import weka.classifiers.bayes.NaiveBayes;
import weka.classifiers.evaluation.*;//Evaluation;
import java.io.BufferedReader;
import java.io.FileReader;
import java.lang.Exception;
//@author bnjagdale
public class mla7
{
 public mla7()
 {
	 try
	 {
		 BufferedReader trainReader = new BufferedReader(new FileReader("/home/siriuslight/Downloads/ReutersGrain-train.arff"));
		 //File with text examples
		 BufferedReader classifyReader = new BufferedReader(new FileReader("/home/siriuslight/Downloads/ReutersGrain-test.arff"));
		 //File with text to classify
		 
		 Instances trainInsts = new Instances(trainReader);
		 Instances classifyInsts = new Instances(classifyReader);
		
		 trainInsts.setClassIndex(trainInsts.numAttributes() - 1);
		 classifyInsts.setClassIndex(classifyInsts.numAttributes() -1);
		
		 NaiveBayes model=new NaiveBayes();
		 model.buildClassifier(trainInsts);
		//System.out.println(model);
		
		 Evaluation eTest = new Evaluation(classifyInsts);
		 eTest.evaluateModel(model, classifyInsts);
		 String[] cmarray = {"normal","anomaly"};
		 ConfusionMatrix cm = new ConfusionMatrix(cmarray);
		//System.out.println(cm.correct());

		for (int i = 0; i < classifyInsts.numInstances(); i++)
		{
			classifyInsts.instance(i).setClassMissing();
			double cls = model.classifyInstance(classifyInsts.instance(i));
			classifyInsts.instance(i).setClassValue(cls);
		}
		
		System.out.println("Error Rate: "+eTest.errorRate()*100);
		System.out.println("Pct Correct: "+eTest.pctCorrect());
		
		for (int i=0; i<trainInsts.numClasses(); i++)
		{
			System.out.println("Class "+ i);
			System.out.println("Precision " +eTest.precision(i));
			System.out.println("Recall "+eTest.recall(i));
			System.out.println("Area under ROC "+eTest.areaUnderROC(i));
			System.out.println();
		}
		//System.out.println(classifyInsts);
	 }//Try
	 catch (Exception o)
	 {
		 System.err.println(o.getMessage());
	 }
}//Mla7 constructor

public static void main(String[] args) {
	mla7 nb = new mla7();
}
}
