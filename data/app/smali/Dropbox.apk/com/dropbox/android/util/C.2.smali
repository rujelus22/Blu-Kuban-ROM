.class public final Lcom/dropbox/android/util/C;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/dropbox/android/util/C;->a:Z

    .line 23
    iput-boolean p2, p0, Lcom/dropbox/android/util/C;->b:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/dropbox/android/util/C;->a:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dropbox/android/util/C;->b:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    instance-of v1, p1, Lcom/dropbox/android/util/C;

    if-eqz v1, :cond_14

    .line 47
    check-cast p1, Lcom/dropbox/android/util/C;

    .line 48
    iget-boolean v1, p0, Lcom/dropbox/android/util/C;->a:Z

    iget-boolean v2, p1, Lcom/dropbox/android/util/C;->a:Z

    if-ne v1, v2, :cond_14

    iget-boolean v1, p0, Lcom/dropbox/android/util/C;->b:Z

    iget-boolean v2, p1, Lcom/dropbox/android/util/C;->b:Z

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    .line 50
    :cond_14
    return v0
.end method
