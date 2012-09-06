.class public Lcom/google/android/maps/driveabout/vector/bY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bY;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bY;-><init>(Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bY;->a:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/vector/bY;->b:Z

    .line 36
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/bY;Lcom/google/android/maps/driveabout/vector/bY;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    if-nez p0, :cond_8

    .line 60
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 62
    :goto_5
    return v0

    .line 60
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 62
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public b()Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bY;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bY;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LabelSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bY;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
