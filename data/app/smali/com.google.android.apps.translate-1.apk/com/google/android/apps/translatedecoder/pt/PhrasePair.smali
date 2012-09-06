.class public Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
.super Ljava/lang/Object;
.source "PhrasePair.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/android/apps/translatedecoder/decoder/Transition;


# static fields
.field private static final EPSILON:D = 0.01

.field private static final serialVersionUID:J = 0x46fc92d9f4434e9bL


# instance fields
.field private cost:D

.field private final srcWords:[I

.field private final tgtWords:[I


# direct methods
.method public constructor <init>([I[ID)V
    .registers 5
    .parameter "srcWords"
    .parameter "tgtWords"
    .parameter "cost"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->srcWords:[I

    .line 26
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords:[I

    .line 27
    iput-wide p3, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost:D

    .line 28
    return-void
.end method


# virtual methods
.method public cost()D
    .registers 3

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 50
    instance-of v2, p1, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    if-eqz v2, :cond_2f

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    .line 52
    .local v0, to:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->srcWords:[I

    iget-object v3, v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->srcWords:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords:[I

    iget-object v3, v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-wide v2, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost:D

    iget-wide v4, v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2f

    const/4 v1, 0x1

    .line 55
    .end local v0           #to:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    :cond_2f
    return v1
.end method

.method public setCost(D)V
    .registers 3
    .parameter "cost"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost:D

    .line 46
    return-void
.end method

.method public srcWords()[I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->srcWords:[I

    return-object v0
.end method

.method public tgtWords()[I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->srcWords:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; trg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
