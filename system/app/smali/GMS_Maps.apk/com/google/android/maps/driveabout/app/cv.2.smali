.class final Lcom/google/android/maps/driveabout/app/cV;
.super Lt/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/dq;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/ds;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/maps/driveabout/app/dq;Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cV;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cV;->b:Lcom/google/android/maps/driveabout/app/dq;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/cV;->c:Lcom/google/android/maps/driveabout/app/ds;

    invoke-direct {p0, p1}, Lt/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public n_()V
    .registers 4

    .prologue
    .line 101
    invoke-static {}, Lt/m;->b()Lt/k;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cV;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/content/Context;Lt/k;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 106
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cV;->b:Lcom/google/android/maps/driveabout/app/dq;

    invoke-virtual {v0}, Lt/k;->C()Lt/l;

    move-result-object v0

    invoke-virtual {v0}, Lt/l;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dq;->b(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cV;->c:Lcom/google/android/maps/driveabout/app/ds;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ds;->b()V

    .line 112
    :cond_24
    return-void
.end method
