.class public final Lcom/google/android/common/html/parser/HTML$Attribute;
.super Ljava/lang/Object;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribute"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:I

.field private final values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "type"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .registers 8
    .parameter "name"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string v2, "Attribute name can not be null"

    invoke-static {p1, v2}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    if-nez p3, :cond_1d

    move v2, v0

    :goto_d
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1f

    :goto_10
    xor-int/2addr v0, v2

    const-string v1, "Only ENUM_TYPE can have values != null"

    invoke-static {v0, v1}, Lcom/google/android/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 170
    iput-object p1, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->type:I

    .line 172
    iput-object p3, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->values:Ljava/util/Set;

    .line 173
    return-void

    :cond_1d
    move v2, v1

    .line 168
    goto :goto_d

    :cond_1f
    move v0, v1

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 209
    if-ne p1, p0, :cond_4

    .line 210
    const/4 v1, 0x1

    .line 216
    :goto_3
    return v1

    .line 212
    :cond_4
    instance-of v1, p1, Lcom/google/android/common/html/parser/HTML$Attribute;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/google/android/common/html/parser/HTML$Attribute;

    .line 214
    .local v0, that:Lcom/google/android/common/html/parser/HTML$Attribute;
    iget-object v1, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 216
    .end local v0           #that:Lcom/google/android/common/html/parser/HTML$Attribute;
    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method
