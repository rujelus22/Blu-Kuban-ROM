.class Lcom/android/samsungtest/FileCopy/FileCopy$2;
.super Ljava/lang/Object;
.source "FileCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FileCopy/FileCopy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FileCopy/FileCopy;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$2;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$2;->this$0:Lcom/android/samsungtest/FileCopy/FileCopy;

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy;->defaultSet()V
    invoke-static {v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$400(Lcom/android/samsungtest/FileCopy/FileCopy;)V

    .line 650
    return-void
.end method
