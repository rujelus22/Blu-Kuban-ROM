.class Lcom/google/android/maps/driveabout/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/g;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/g;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/i;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/a;)V
    .registers 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/i;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->d(Lcom/google/android/maps/driveabout/app/g;)Li/a;

    move-result-object v0

    if-eq p1, v0, :cond_3c

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected completion of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/i;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/g;->d(Lcom/google/android/maps/driveabout/app/g;)Li/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "AlertController"

    invoke-static {v1, v0}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 330
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_3c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/i;->a:Lcom/google/android/maps/driveabout/app/g;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->j(Lcom/google/android/maps/driveabout/app/a;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/i;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 335
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/i;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/d;->a()V

    .line 337
    :cond_54
    return-void
.end method
