.class public Lcom/android/samsungtest/SimpleFunctionTest/AccImageTest;
.super Landroid/app/Activity;
.source "AccImageTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/AccImageTest;->setContentView(I)V

    .line 20
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/AccImageTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 22
    .local v0, mLayout:Landroid/widget/LinearLayout;
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 23
    return-void
.end method
