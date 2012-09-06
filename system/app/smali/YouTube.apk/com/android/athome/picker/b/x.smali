.class final Lcom/android/athome/picker/b/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/athome/picker/b/x;->a:Ljava/lang/String;

    .line 133
    iput p2, p0, Lcom/android/athome/picker/b/x;->b:I

    .line 134
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    instance-of v1, p1, Lcom/android/athome/picker/b/x;

    if-nez v1, :cond_6

    .line 150
    :cond_5
    :goto_5
    return v0

    .line 149
    :cond_6
    check-cast p1, Lcom/android/athome/picker/b/x;

    .line 150
    iget-object v1, p0, Lcom/android/athome/picker/b/x;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/athome/picker/b/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/athome/picker/b/x;->b:I

    iget v2, p1, Lcom/android/athome/picker/b/x;->b:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/athome/picker/b/x;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    add-int/lit16 v0, v0, 0x20f

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/athome/picker/b/x;->b:I

    add-int/2addr v0, v1

    .line 141
    return v0

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/android/athome/picker/b/x;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method
