.class Lcom/google/googlenav/ui/view/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic c:Z


# instance fields
.field a:I

.field b:Lcom/google/googlenav/ui/view/android/c;

.field final synthetic d:Lcom/google/googlenav/ui/view/android/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    const-class v0, Lcom/google/googlenav/ui/view/android/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/view/android/i;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/googlenav/ui/view/android/g;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/i;->d:Lcom/google/googlenav/ui/view/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/i;->a:I

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Lcom/google/googlenav/ui/view/android/c;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 149
    sget-boolean v0, Lcom/google/googlenav/ui/view/android/i;->c:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/google/googlenav/ui/view/android/i;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Lcom/google/googlenav/ui/view/android/c;

    if-eqz v0, :cond_19

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->b:Lcom/google/googlenav/ui/view/android/c;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/c;->a()V

    .line 157
    :goto_18
    return-void

    .line 155
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/i;->d:Lcom/google/googlenav/ui/view/android/g;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/g;->a:LaM/bj;

    const/16 v1, 0x2bc

    iget v2, p0, Lcom/google/googlenav/ui/view/android/i;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/bj;->a(IILjava/lang/Object;)Z

    goto :goto_18
.end method
