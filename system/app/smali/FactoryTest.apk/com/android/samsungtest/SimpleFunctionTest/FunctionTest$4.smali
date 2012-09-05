.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$4;
.super Ljava/lang/Object;
.source "FunctionTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sdcardTest()V

    .line 253
    return-void
.end method
