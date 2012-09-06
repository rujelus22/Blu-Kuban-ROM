.class final Lcom/android/athome/picker/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    iput-object p2, p0, Lcom/android/athome/picker/b/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/athome/picker/b/g;->b:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/athome/picker/b/g;->c:Z

    iput-object p5, p0, Lcom/android/athome/picker/b/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateGroup(Landroid/support/place/music/TgsGroup;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1306
    const-string v1, "AtHomeMediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created group "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/athome/picker/b/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v1, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->x(Lcom/android/athome/picker/b/a;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz p1, :cond_26

    .line 1308
    iget-object v1, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    invoke-static {v1, v0}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;Z)Z

    .line 1311
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    iget-object v2, p0, Lcom/android/athome/picker/b/g;->b:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v2

    .line 1313
    :goto_31
    if-ge v0, v2, :cond_49

    .line 1314
    iget-object v3, p0, Lcom/android/athome/picker/b/g;->b:Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 1315
    iget-object v4, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    invoke-static {v4}, Lcom/android/athome/picker/b/a;->e(Lcom/android/athome/picker/b/a;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1318
    :cond_49
    const-string v0, "AtHomeMediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connector size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    iget-object v2, p0, Lcom/android/athome/picker/b/g;->b:Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 1320
    iget-boolean v0, p0, Lcom/android/athome/picker/b/g;->c:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1321
    iget-object v0, p0, Lcom/android/athome/picker/b/g;->e:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;

    iget-object v0, p0, Lcom/android/athome/picker/b/g;->d:Ljava/lang/Object;

    .line 1323
    :cond_7b
    return-void
.end method
