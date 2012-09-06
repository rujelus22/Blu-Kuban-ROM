.class public final Lcom/android/athome/picker/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/athome/picker/b/v;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/android/athome/picker/b/v;->b:Ljava/lang/Object;

    .line 352
    iput-object p3, p0, Lcom/android/athome/picker/b/v;->c:Ljava/util/List;

    .line 353
    return-void
.end method

.method constructor <init>(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/android/athome/picker/b/v;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/util/List;)V

    .line 357
    iput-object p4, p0, Lcom/android/athome/picker/b/v;->d:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/athome/picker/b/v;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/athome/picker/b/v;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/athome/picker/b/v;->d:Ljava/lang/String;

    return-object v0
.end method
