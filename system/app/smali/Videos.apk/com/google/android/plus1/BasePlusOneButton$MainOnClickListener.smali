.class Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;
.super Ljava/lang/Object;
.source "BasePlusOneButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #getter for: Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$600(Lcom/google/android/plus1/BasePlusOneButton;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 440
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/BasePlusOneButton;->mClicked:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->access$602(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 441
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$MainOnClickListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneButton;->getUsernameAsync()V

    .line 443
    :cond_13
    return-void
.end method
