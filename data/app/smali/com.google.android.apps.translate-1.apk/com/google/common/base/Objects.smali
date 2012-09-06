.class public final Lcom/google/common/base/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$1;,
        Lcom/google/common/base/Objects$ToStringHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter "a"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "b"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static deepHashCode(Ljava/lang/Object;)I
    .registers 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    return v0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 281
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "b"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 59
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, first:Ljava/lang/Object;,"TT;"
    .local p1, second:Ljava/lang/Object;,"TT;"
    if-eqz p0, :cond_3

    .end local p0           #first:Ljava/lang/Object;,"TT;"
    :goto_2
    return-object p0

    .restart local p0       #first:Ljava/lang/Object;,"TT;"
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .registers 2
    .parameter "objects"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 78
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static nonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, obj:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_8

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_8
    return-object p0
.end method

.method public static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter
    .end parameter
    .parameter "message"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, obj:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_8

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_8
    return-object p0
.end method

.method private static simpleName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, name:Ljava/lang/String;
    const-string v2, "\\$[0-9]+"

    const-string v3, "\\$"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 167
    .local v1, start:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 168
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 170
    :cond_1b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/base/Objects$ToStringHelper;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper;

    invoke-static {p0}, Lcom/google/common/base/Objects;->simpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .parameter "self"

    .prologue
    .line 122
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Objects;->simpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "className"

    .prologue
    .line 148
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V

    return-object v0
.end method
