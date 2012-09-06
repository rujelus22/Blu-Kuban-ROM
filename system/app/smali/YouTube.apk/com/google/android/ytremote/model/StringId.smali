.class public abstract Lcom/google/android/ytremote/model/StringId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/android/ytremote/model/StringId;->id:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 31
    instance-of v0, p1, Lcom/google/android/ytremote/model/StringId;

    if-nez v0, :cond_6

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_5
    return v0

    .line 34
    :cond_6
    check-cast p1, Lcom/google/android/ytremote/model/StringId;

    .line 35
    iget-object v0, p0, Lcom/google/android/ytremote/model/StringId;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/ytremote/model/StringId;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/ytremote/model/StringId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/ytremote/model/StringId;->id:Ljava/lang/String;

    return-object v0
.end method
