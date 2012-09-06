.class public final Lcom/android/athome/picker/media/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:I

.field final c:Z

.field final synthetic d:Lcom/android/athome/picker/media/v;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/v;Ljava/lang/CharSequence;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/athome/picker/media/x;->d:Lcom/android/athome/picker/media/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object p2, p0, Lcom/android/athome/picker/media/x;->a:Ljava/lang/CharSequence;

    .line 1128
    iput p3, p0, Lcom/android/athome/picker/media/x;->b:I

    .line 1129
    iput-boolean p4, p0, Lcom/android/athome/picker/media/x;->c:Z

    .line 1130
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RouteCategory{ name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/athome/picker/media/x;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/x;->b:I

    invoke-static {v1}, Lcom/android/athome/picker/media/v;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/athome/picker/media/x;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/media/x;->d:Lcom/android/athome/picker/media/v;

    invoke-static {v1}, Lcom/android/athome/picker/media/v;->b(Lcom/android/athome/picker/media/v;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
