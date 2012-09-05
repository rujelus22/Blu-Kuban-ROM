.class public final Lcom/google/android/common/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/common/h;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/google/android/common/l;->c:Landroid/view/View;

    .line 224
    iput-object p2, p0, Lcom/google/android/common/l;->a:Ljava/util/ArrayList;

    .line 225
    iput-object p3, p0, Lcom/google/android/common/l;->b:Ljava/util/ArrayList;

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/google/android/common/l;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/common/l;->d:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/common/l;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcom/google/android/common/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_9
    iget-object v0, p0, Lcom/google/android/common/l;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 244
    iget-object v0, p0, Lcom/google/android/common/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_12
    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/common/l;->c:Landroid/view/View;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/common/l;->d:Landroid/content/Intent;

    return-object v0
.end method
