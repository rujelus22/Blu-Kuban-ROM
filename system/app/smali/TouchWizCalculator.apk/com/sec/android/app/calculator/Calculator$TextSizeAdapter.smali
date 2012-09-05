.class Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/calculator/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSizeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .registers 2
    .parameter

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/calculator/Calculator;Lcom/sec/android/app/calculator/Calculator$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    invoke-direct {p0, p1}, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1941
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1945
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1949
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    .line 1954
    const/4 v1, 0x0

    .line 1960
    .local v1, rl:Landroid/widget/RelativeLayout;
    if-nez p2, :cond_33

    .line 1961
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/Calculator;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1966
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    :goto_14
    const v3, 0x7f050032

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1968
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f050033

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1971
    .local v0, rb:Landroid/widget/RadioButton;
    packed-switch p1, :pswitch_data_66

    .line 1993
    :goto_29
    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$1000()I

    move-result v3

    if-ne p1, v3, :cond_61

    .line 1994
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1999
    :goto_32
    return-object v1

    .end local v0           #rb:Landroid/widget/RadioButton;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_33
    move-object v1, p2

    .line 1964
    check-cast v1, Landroid/widget/RelativeLayout;

    goto :goto_14

    .line 1973
    .restart local v0       #rb:Landroid/widget/RadioButton;
    .restart local v2       #tv:Landroid/widget/TextView;
    :pswitch_37
    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1975
    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$900()F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_29

    .line 1980
    :pswitch_45
    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1981
    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$900()F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_29

    .line 1984
    :pswitch_53
    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1986
    invoke-static {}, Lcom/sec/android/app/calculator/Calculator;->access$900()F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_29

    .line 1996
    :cond_61
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_32

    .line 1971
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_37
        :pswitch_45
        :pswitch_53
    .end packed-switch
.end method
