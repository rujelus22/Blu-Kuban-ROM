.class final Lcom/google/android/plus1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneButton;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;)V
    .registers 3
    .parameter

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/d;-><init>(Lcom/google/android/plus1/BasePlusOneButton;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/android/plus1/d;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/plus1/d;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->b(Lcom/google/android/plus1/BasePlusOneButton;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 536
    iget-object v0, p0, Lcom/google/android/plus1/d;->a:Lcom/google/android/plus1/BasePlusOneButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneButton;->b(Lcom/google/android/plus1/BasePlusOneButton;Z)Z

    .line 537
    iget-object v0, p0, Lcom/google/android/plus1/d;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneButton;->h()V

    .line 539
    :cond_13
    return-void
.end method
