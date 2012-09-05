.class Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;
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
    name = "ResetOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 2
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;Lcom/google/android/plus1/BasePlusOneButton$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;-><init>(Lcom/google/android/plus1/BasePlusOneButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneButton$ResetOnClickListener;->this$0:Lcom/google/android/plus1/BasePlusOneButton;

    #calls: Lcom/google/android/plus1/BasePlusOneButton;->initPlusOne()V
    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->access$1800(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 547
    return-void
.end method
