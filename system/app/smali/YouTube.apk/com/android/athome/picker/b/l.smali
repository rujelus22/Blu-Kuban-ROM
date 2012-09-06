.class final Lcom/android/athome/picker/b/l;
.super Lcom/android/athome/picker/media/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/athome/picker/b/l;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Lcom/android/athome/picker/media/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->i(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, p2, 0x64

    div-int/lit8 v1, v1, 0x21

    add-int/2addr v0, v1

    .line 172
    const-string v1, "AtHomeMediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnVolumeUpdateRequest: routeInfo("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") steps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/android/athome/picker/b/a;->c()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_37

    invoke-static {}, Lcom/android/athome/picker/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4a

    .line 176
    :cond_37
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    invoke-static {p1, v0}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;I)V

    .line 178
    iget-object v1, p0, Lcom/android/athome/picker/b/l;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1, p1, v0}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;I)V

    .line 180
    :cond_4a
    return-void
.end method

.method public final b(Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 184
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVolumeSetRequest: routeInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/athome/picker/b/l;->a:Lcom/android/athome/picker/b/a;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;I)V

    .line 186
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/android/athome/picker/b/a;->c()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_35

    invoke-static {}, Lcom/android/athome/picker/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3d

    .line 189
    :cond_35
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;I)V

    .line 190
    iget-object v0, p0, Lcom/android/athome/picker/b/l;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1, p2}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;I)V

    .line 192
    :cond_3d
    return-void
.end method
