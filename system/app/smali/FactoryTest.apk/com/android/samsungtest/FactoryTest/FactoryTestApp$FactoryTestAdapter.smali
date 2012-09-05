.class Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;
.super Landroid/widget/BaseAdapter;
.source "FactoryTestApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryTestAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mSDCardHolder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V
    .registers 3
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 788
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 789
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 793
    const/16 v0, 0xd

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 798
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 803
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 810
    if-nez p2, :cond_9f

    .line 812
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 814
    new-instance v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    invoke-direct {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;-><init>()V

    .line 815
    .local v0, holder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;
    const v1, 0x7f090034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    .line 816
    const v1, 0x7f090035

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    .line 817
    const v1, 0x7f090036

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    .line 818
    const v1, 0x7f090037

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    .line 819
    const v1, 0x7f090038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    .line 820
    const v1, 0x7f090039

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    .line 822
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 829
    :goto_5e
    if-nez p1, :cond_a6

    .line 831
    const-string v1, "FactoryTestApp"

    const-string v2, "simple function test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "1."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v6

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 835
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    :cond_9e
    :goto_9e
    return-object p2

    .line 826
    .end local v0           #holder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;
    :cond_9f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    .restart local v0       #holder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;
    goto :goto_5e

    .line 840
    :cond_a6
    if-ne p1, v4, :cond_137

    .line 842
    const-string v1, "FactoryTestApp"

    const-string v2, "loopback test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #setter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCallEarView:Landroid/view/View;
    invoke-static {v1, p2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$102(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Landroid/view/View;)Landroid/view/View;

    .line 844
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "2."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 847
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 852
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9e

    .line 858
    :cond_137
    const/4 v1, 0x2

    if-ne p1, v1, :cond_17c

    .line 860
    const-string v1, "FactoryTestApp"

    const-string v2, "bt test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "3."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 869
    :cond_17c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1c1

    .line 871
    const-string v1, "FactoryTestApp"

    const-string v2, "L_speaker"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "4."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 875
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 880
    :cond_1c1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_206

    .line 882
    const-string v1, "FactoryTestApp"

    const-string v2, "tsp test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "5."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 886
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 891
    :cond_206
    const/4 v1, 0x5

    if-ne p1, v1, :cond_24b

    .line 893
    const-string v1, "FactoryTestApp"

    const-string v2, "magnetic sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "6."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 897
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 899
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 902
    :cond_24b
    const/4 v1, 0x6

    if-ne p1, v1, :cond_28e

    .line 904
    const-string v1, "FactoryTestApp"

    const-string v2, "usb path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "7."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 908
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 910
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 911
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 937
    :cond_28e
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2f5

    .line 939
    const-string v1, "FactoryTestApp"

    const-string v2, "Touch Test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "8."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v7

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 943
    const-string v1, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============= Touch test color :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v4, v4, v7

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 945
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 946
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 949
    :cond_2f5
    if-ne p1, v5, :cond_35b

    .line 951
    const-string v1, "FactoryTestApp"

    const-string v2, "Gyroscope Test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "9."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v8

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 955
    const-string v1, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============= Touch test color :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v4, v4, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v4, v4, v8

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 959
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 961
    :cond_35b
    if-ne p1, v7, :cond_3a1

    .line 963
    const-string v1, "FactoryTestApp"

    const-string v2, "SensorTest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "10."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 967
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 968
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 972
    :cond_3a1
    if-ne p1, v8, :cond_3e7

    .line 974
    const-string v1, "FactoryTestApp"

    const-string v2, "HDMItest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "11."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 978
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 981
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 983
    :cond_3e7
    const/16 v1, 0xb

    if-ne p1, v1, :cond_435

    .line 985
    const-string v1, "FactoryTestApp"

    const-string v2, "SDcard Test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "12."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 992
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mSDCardHolder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    if-nez v1, :cond_9e

    .line 994
    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mSDCardHolder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    goto/16 :goto_9e

    .line 997
    :cond_435
    const/16 v1, 0xc

    if-ne p1, v1, :cond_9e

    .line 999
    const-string v1, "FactoryTestApp"

    const-string v2, "Function Test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "13."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1003
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1006
    iget-object v1, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e
.end method
