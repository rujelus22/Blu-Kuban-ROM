.class final Lcom/android/athome/picker/r;
.super Lcom/android/athome/picker/media/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/q;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/q;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/athome/picker/r;->a:Lcom/android/athome/picker/q;

    invoke-direct {p0}, Lcom/android/athome/picker/media/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 137
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteUnSelected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 142
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteAdded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteSelected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 158
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 147
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteRemoved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 152
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method
