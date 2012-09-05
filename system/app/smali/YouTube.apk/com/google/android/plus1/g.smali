.class final Lcom/google/android/plus1/g;
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
    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/g;-><init>(Lcom/google/android/plus1/BasePlusOneButton;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneButton;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/plus1/g;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/plus1/g;->a:Lcom/google/android/plus1/BasePlusOneButton;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneButton;->i(Lcom/google/android/plus1/BasePlusOneButton;)V

    .line 547
    return-void
.end method
