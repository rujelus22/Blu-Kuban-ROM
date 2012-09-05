.class Lcom/google/android/plus1/PlusOneController$Worker$8;
.super Ljava/lang/Object;
.source "PlusOneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/PlusOneController$Worker;->getProfileImage(Lcom/google/android/plus1/PlusOnePerson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/PlusOneController$Worker;

.field final synthetic val$finalResult:Landroid/graphics/Bitmap;

.field final synthetic val$person:Lcom/google/android/plus1/PlusOnePerson;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/PlusOneController$Worker;Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneController$Worker$8;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iput-object p2, p0, Lcom/google/android/plus1/PlusOneController$Worker$8;->val$person:Lcom/google/android/plus1/PlusOnePerson;

    iput-object p3, p0, Lcom/google/android/plus1/PlusOneController$Worker$8;->val$finalResult:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneController$Worker$8;->this$1:Lcom/google/android/plus1/PlusOneController$Worker;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneController$Worker;->this$0:Lcom/google/android/plus1/PlusOneController;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneController$Worker$8;->val$person:Lcom/google/android/plus1/PlusOnePerson;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneController$Worker$8;->val$finalResult:Landroid/graphics/Bitmap;

    #calls: Lcom/google/android/plus1/PlusOneController;->publishProfileImage(Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/plus1/PlusOneController;->access$1800(Lcom/google/android/plus1/PlusOneController;Lcom/google/android/plus1/PlusOnePerson;Landroid/graphics/Bitmap;)V

    .line 728
    return-void
.end method
