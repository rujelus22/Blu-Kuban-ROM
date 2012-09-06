.class Lcom/google/googlenav/ui/view/android/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/google/googlenav/ui/g;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/bB;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bD;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bD;->b:Lcom/google/googlenav/ui/g;

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bD;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 48
    return-void
.end method
