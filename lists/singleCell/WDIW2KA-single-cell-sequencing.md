what do I want to know about single cell sequencing

List of FIELD disciplines


# 1. Basic knowledge

## 学科/领域发展历史

2009年，第一个单细胞全转录组测序(WTA)方案被应用于分析单个细胞的转录组复杂性[5]。 随后，单细胞全基因组测序基因组(WGS)于2011年创建[6] ，单细胞全外显子组测序(WES)于2012年创建[7,8] ，单细胞表观基因组测序于2013年创建[9]。 目前，单细胞测序技术已广泛应用于各种研究和临床领域，据统计，单细胞测序技术在癌症、胚胎发育、微生物学、神经生物学和免疫学等领域的研究排名前五。

1. 单细胞分离方法
从大量细胞中分离单个细胞的方法主要有连续稀释法、机械微操作法、激光捕获显微切割法(LCM)、荧光激活细胞分选法(FACS)和微流控法

>![](http://east2-image.oss-cn-shanghai.aliyuncs.com/18-11-25/28629582.jpg)
目前的单细胞分离方法。 A.连续稀释; B 机械显微操作; C 激光捕获显微切割(LCM); D 荧光激活细胞分选(FACS); 电子微流控; F 循环肿瘤细胞分离的代表平台: CellSearch




单细胞测序协议一般包括以下步骤: 单个细胞的分离、核酸的提取和扩增、测序文库的准备、测序和生物信息学数据分析。 与批量细胞测序相比，单细胞测序更具挑战性。 从单个细胞获得的最小量的原始材料会造成降解、样品丢失和污染，这些都会对测序数据的质量产生显著的影响。 另外，由于单细胞测序的样本准备过程中，由于所使用的核酸数量的微微差图谱水平，常常需要大幅放大，导致测序数据的覆盖率、噪音和定量不准确。
最近的技术改进使得单细胞测序成为一种很有前途的工具，可用于处理一系列看似无法解决的问题。 例如，异质样本、罕见细胞类型、细胞谱系关系、体细胞组织镶嵌现象、不能培养的微生物分析以及疾病进化都可以通过单细胞测序来阐明。单细胞测序法被自然2013年的方法。 
"method of the year 2013"


## Key process
可以以前所未有的分辨率评估细胞群体和生物系统的基本生物学特性：
分离单个细胞
获取转录本
建立测序库
将转录本映射到单个细胞上

### 1. Isolating
Droplet / microfluidics   approaches

10x Genomics 的单细胞控制器

Cyto-seq    method  
Small   volume  approaches


### 2. 获取转录本
### 3. 建立测序库
根据生成 scRNA-seq 数据集的方法，数据的一些显著特征可能会影响实验设计。 Smart-Seq2与10x Chromium 方案的主要区别在于 RNA 加工成 cDNA 的方式。 Smart-seq2可以捕获全长 mRNA，尽管由于 cDNA 生成过程中使用的 oligo dT 引物存在明显的3′端偏倚，而10x 方案是基于3′-tag 测序法(图1A)。 因此，在选择单细胞 rna seq 方法时，必须考虑研究的目的。 例如，与异构体或基因融合有关的研究需要全长捕获，而3′-标记方法可以捕获更多的细胞，从而提供一个特定细胞群的转录异质性的综合观点。


### 4. Analysis pipelines


#### Identifying  celltypes
Dimensionality  reduction    
 - PCA   (principal  component   analysis)   
 - ICA   (independent    component   analysis)   
 - MDS   (mul>dimensional    scaling)    
 - Non-linear    PCA 
 - t-SNE (t-distributed  stochas>c   neighbor    embedding)  
 - Diffusion maps    
 - Network   based   methods 

Clustering

Data    bias    
• May   require normaliza>on    before  clustering/PCA,     
 - Batch effect  removal (SVA  ComBat  func>on)    
 - Remove    cell-cycle  effects or  size bias (scLVM  package) 
 - RT efficiency  / drop-out rate (SCDE package) 
 - Technical noise (BASiCS package, GRM, Brenneke method) 

### 5. 
### 2. 
## 3.1 Cancer

## 3.2 Stem Cell

## 3.3 Neuronlogy

