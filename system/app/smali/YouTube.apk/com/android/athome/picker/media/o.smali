.class public final Lcom/android/athome/picker/media/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 1207
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->i(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1225
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2
    .parameter

    .prologue
    .line 1246
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
