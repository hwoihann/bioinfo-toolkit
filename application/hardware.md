# Determine better candidates for lab PC purchasing

## first hit
- time elapsed:  2018-11-02~2018-11-05
- gain: 
     1. basic knowledge of computer composation, like CPU+motherboard; but GPU is needed more related research
     2. ask masters was better than digging the net alone, but we shoulde first know how to find the master!
     3. The origin of time/knowledge is based on the purpose, e.g. what system requirements is better for single cell analysis?

## second hit
2018-11-09 22:30~

## 1. Basic knowledge of computer comosition
### 1.1 CPU
 CPU 到底侧重高频还是多核呢？答案是，都需要！听起来有点耍流氓，但请听我细说。高频就不用多解释了，在架构相同的情况下，核心频率基本可以与性能挂钩。而多核的作用也不可忽视，对于支持多核多线程的软件，多核 CPU 可以极大提高处理速度，常见的操作如多核渲染就需要多核 CPU 加持。

CPU有几个重要的参数：主频、核心、线程、缓存、架构

我们常在CPU的参数里看到 3.0GHz、3.7GHz等就是CPU的主频，严谨的说他是CPU内核的时钟频率，但是我们也可以直接理解为运算速度。
举个有趣的例子：CPU的主频相当于我们胳膊的肌肉（力量），主频越高，力量越大。

二、核心
我们更多听到的是，这个CPU是几核几核的，如2核、4核、6核、8核、16核等等。
这个核心可以理解为我们人类的胳膊，2核就是两条胳膊，4核就是4条胳膊，6核就是6条胳膊。

三、线程
光有胳膊（核心）和肌肉（频率）是干不了活的，还必须要有手（线程）才行。
一般来说，单核配单线程、双核配双线程或者双核四线程、四核八线程等等，就相当于一条胳膊长一只手。后来由于技术越来越厉害，造
出了一条胳膊长两只手的情况，这样干活的效率就大大的提高了。

四、架构
现在胳膊有了，肌肉有了，手也有了，就差一个工具就可以干活了，这个工具就是CPU的架构，架构对性能的影响巨大。

五、缓存
缓存也是CPU里一项很重要的参数。由于CPU的运算速度特别快，在内存条的读写忙不过来的时候，CPU就可以把这部分数据存入
缓存中，以此来缓解CPU的运算速度与内存条读写速度不匹配的矛盾，所以缓存是越大越好。

ref: https://www.pc841.com/article/20180522-89740_all.html
[CPU性能天梯图](https://www.pc841.com/article/20180302-87890.html)

### 1.2. 主板
主板是由集成电路和插槽构成的电路板，为其他电脑硬件提供安装位置、供电和其他功能。_芯片是有处理能力的集成电路_  
 - 背板I/O（Input/Output）接口含USB、VGA视频接口、RJ45网口，音频接口等；
 - SATA接口用于连接SATA接口的硬盘；
 - 插针与机箱上的接口线连接，为机箱提供电源键、USB、音频等功能

__Q: 主板，怎么分类？__  
过去，NB肩负着CPU运算的重任，故芯片组均以NB的类型命名，如H81、B85、Z87等。相应地，也把搭载不同芯片组的主板简称为H81主板、B85主板等，便形成了主板的分类。  
>1. 芯片组不同，可承载的硬件规格就不同
2. 芯片组不同，可承载的硬件数量就不同。一般来说，更高端的芯片组，可承载的硬件数量就更多。
3. 芯片组不同，拓展功能也不同。一般来说，更高端的芯片组，拓展性就更强，可玩性也更强。
4. 芯片组不同，价格自然就不同。一般来说，更高端的芯片组，肯定就更贵啊怎么可能更便宜呢。

__Q: 主板都有哪些牌子？不同牌子之间又有啥区别？产品又是怎么样的呢?__  
MSI/ASUS/huaqing

__Q: how to choose motherboard?__  
不同于游戏主板侧重于炫酷外观、高性能网卡和游戏优化，这些主板往往讲究耐用性、稳定性，往往会通过优化电路和散热设计，并采用质量“过好”的主板元件达到目的。但作为以设计、编程为命的你们，真的没必要为了买这些巨贵的所谓设计主板把命都搭进去。在我看来，设计用主板主要关注三点即可：   
1. 耐久度: 无脑选择华硕技嘉微星基本是可以不用担心了。  
2. 接口数量和丰富性
老板让你拷一个工程，你的电脑却只有前置 USB 2.0 和后置 USB 3.0 可选，要么直接拷到明天，再也不用上班；要么兴师动众掿电脑，撅着屁股插 U 盘。再碰到只有双 Type-C 线让你拷文件的土豪老板，你可别让他滚去百度云自己找资源啊。如果你有一个又土豪又潮的老板，带前置 USB 3.1 的 200 系主板是个不错的选择。  
另外，储存接口也要符合自身需求，足够多的 SATA 接口能让你未来更方便地拓展储存空间。M.2 和 PCI-E X4 也能更好满足高速储存的需求。  
3. 比较小众的音频部分  
作为一个业余音乐剪辑玩家，建议可以买一些有金属屏蔽罩和内置高端声卡的主板。虽然不如一副好耳机有用，但心理作用还是蛮强的。  
4. 显卡  
AMD Radeon R7

#### Plans better for personal interesting 
__选择1：买新CPU，不容易买到盗版性能较选2差，预算15,000__
- 主板：华硕TUF X299 Mark 2
- CPU： Intel 酷睿i7 7820X
- 内存：金士顿骇客神条FURY 16GB DDR4 2400（HX424C15FB/16）*4
- 硬盘：金士顿 A400（480GB） + 希捷 BarraCuda 4TB 5900转（不够可加）
- 显卡：七彩虹GT740 灵动鲨-1GD5
- 网卡： Intel 9301CT
- 机箱：金河田 21+峥嵘 MUT1
- 电源：Seasonic 850FX  或者 先马金牌750W 
- 机箱散热：大水牛 幻月 * 6
- 处理器散热：金河田 4 管散热风扇

__选择2：买二手CPU+主板，便宜&性能更好，预算10,000__
 主板+CPU买二手购买链接： https://item.taobao.com/item.htm?spm=a1z09.2.0.0.67002e8d72rtxi&id=559116346266&_u=2vope605a1  
买配置4：20核40线程 E5-2680 V2*2  128G内存 （单条 16G 内存）无硬盘+2个全新 四热管散热器价格：6140元  
- 主板：intel s2600co X79双路主板 2011针服务器
- CPU：Intel xeon cpu e5 2680 v2 *2
- 内存：金士顿骇客神条FURY 16GB DDR4 2400（HX424C15FB/16）*4
- 硬盘：金士顿 A400（480GB） + 希捷 BarraCuda 4TB 5900转（不够可加）
- 显卡：七彩虹GT740 灵动鲨-1GD5
- 网卡： Intel 9301CT
- 机箱：金河田 21+峥嵘 MUT1
- 电源：Seasonic 850FX  或者 先马金牌750W 
- 机箱散热：大水牛 幻月 * 6

__选择3__
 - CPU：Intel/Xeon E5-2683-V3 正式版CPU 原装散片 14核心28线程（2个）
 - 主板：全新超微X10DAI LGA2011-3 C612 双路E5-2600V3V4 图形工作站主板
 - 机箱：超微SC745TQ-920B 图形工作站塔式机箱 920W电源 8*SATA热插拔
 - CPU风扇：DIY组装网烁WASO 3U2011 五热管 四线侧吹静音工作站散热器 两个
 - 内存：三星专业服务器内存 DDR4 RECC 16g 4个
 - 显示屏：三星C27F591FD 27英寸新品曲面1800R曲率液晶
 - 固态硬盘：Intel SSD 256g 1个
 - 无线网卡：Fenvi无线网卡台式机pci-e AR9280双频5G 300M+300Mac免驱

高级配置（by leo）
 - 先马金牌750 双路主板CPU 8pin 24￥500
 - 服务器工作站E-ATX塔式静音 ￥1650

__选择4__
 - CPU+主板: AMD 锐龙R7 2700X + 华硕PRIME X470-PRO ￥4,000  
 - 内存: 海盗船复仇者LPX 16G 3000 *2  ￥2,000  
 - 显卡(CPU没有集成显卡需另配)：索泰GTX1050Ti-4GD5 雷霆TSI   ￥1,069
 - 硬盘: ￥1,050 total
    + SSD: 三星 960 EVO 500G M.2 NVME高速固态硬盘 ￥889
    + HDD: Seagate/希捷 ST3000DM008  3TB ￥500  
 - 电源：USCorsair  VS550 ￥329
 - 机箱: 先马 塞恩7静音版￥250  
 - 散热: CPU自带不需要    


## 2. Ask masters and yourself: what do you need?
Figure out what do you need is the most important sector.  

## 3. The origin of time/knowledge is based on the purpose, e.g. what system requirements is better for single cell analysis?
![cell-ranger-rnaseq](http://owxb9z5ea.bkt.clouddn.com/18-11-5/39930722.jpg)

### 3.1 SINGLE CELL TRANSCRIPTOMICS
 - [Single Cell Gene Expression: Cell Ranger](https://support.10xgenomics.com/single-cell-gene-expression/software/overview/system-requirements)
 - [Single Cell Immune Profiling](https://support.10xgenomics.com/single-cell-vdj/software/overview/system-requirements)
     + 8-core Intel or AMD processor (16 cores recommended)
     + 64GB RAM (128GB recommended)    
     + 1TB free disk space
     + 64-bit CentOS/RedHat 5.5 or Ubuntu 10.04

### 3.2. SINGLE CELL EPIGENOMICS
 - [Single Cell ATAC: Cell Ranger ATAC](https://support.10xgenomics.com/single-cell-atac/software/overview/system-requirements)
    + 8-core Intel or AMD processor (16 cores recommended)
    + 64GB RAM (128GB recommended)
    + 1TB free disk space
    + 64-bit CentOS/RedHat 6.0 or Ubuntu 12.04

>Note: Cell Ranger 2.1 is expected to be the last version of Cell Ranger to support CentOS/RedHat 5 and Ubuntu 10. Future versions of Cell Ranger will require CentOS/RedHat 6 or Ubuntu 12 or later. See the 10x OS Support page for further information.

### 3.3. SINGLE CELL GENOMICS
 - [Single Cell CNV: Cell Ranger DNA](https://support.10xgenomics.com/single-cell-dna/software/overview/system-requirements)
     + 16-core Intel or AMD processor
     + 128GB of RAM
     + 2TB of free disk space per 750 million read-pairs. Cell Ranger DNA is very sensitive to IO speed so we highly recommend solid-state disks or RAID arrays.
     + 64-bit Centos/RedHat 6.0 or Ubuntu 12.04.

### 3.4. LINKED-READ GENOMICS
 - [Genome & Exome: Long Ranger Pipeline](https://support.10xgenomics.com/genome-exome/software/overview/latest/system-requirements)
 recommended experiment (1000 cells at 750,000 read-pairs per cell) there will be 750 million read-pairs 
    + 16-core Intel or AMD processor
    + 96GB/128GB of RAM
    + 2TB of free disk space per 750 million read-pairs. Cell Ranger DNA is very sensitive to IO speed so we highly recommend solid-state disks or RAID arrays. 
    + 64-bit Centos/RedHat 6.0 or Ubuntu 12.04.
 - [De Novo Assembly: Supernova]()
     + 16-core (or greater) Intel or AMD processor
     + At least 256 GB RAM
         * 256 GB RAM for a human at 56x coverage (tested successfully on eight datasets; probably between 1 and 10% of human datasets at 56x coverage require 10-20% more memory)
         * 512 GB RAM for some nonhuman datasets
         * 512 GB RAM for some nonhuman datasets; genomes larger than 3.2 Gb, or genomes with high repeat content, could require this. Genomes larger than 4 GB should be considered experimental and are not supported

Long Ranger is a set of analysis pipelines that processes Chromium sequencing output to align reads and call and phase SNPs, indels, and structural variants. 
![Long Ranger](http://owxb9z5ea.bkt.clouddn.com/18-11-5/57023463.jpg)

### 3.2. other resources for scRNAseq analysis when searching
Tabula Muris:
 - practice http://hemberg-lab.github.io/scRNA.seq.course/tabula-muris.html
 - [Transcriptomic characterization of 20 organs and tissues from mouse at single cell resolution creates a Tabula Muris](https://www.biorxiv.org/content/early/2017/12/20/237446)
>The Tabula Muris is an international collaboration with the aim to profile every cell-type in the mouse using a standardized method. They combine highthroughput but low-coverage 10X data with lower throughput but high-coverage FACS-sorted cells + Smartseq2.
The initial release of the data (20 Dec 2017), contain almost 100,000 cells across 20 different tissues/organs. You have been assigned one of these tissues as an example to work on over this course, and on Friday each person will have 3 minutes to present the result for their tissue.

[Microwell-Seq](https://www.cell.com/cell/fulltext/S0092-8674(18)30116-8#))
seurat2:  
[Integrating single-cell transcriptomic data across different conditions, technologies, and species](https://www.nature.com/articles/nbt.4096)