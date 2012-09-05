.class public final Lci;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbq;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .registers 3

    .prologue
    .line 18
    const/16 v0, 0x70e7

    .line 19
    iget-object v1, p0, Lci;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lci;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    xor-int/lit16 v0, v0, 0x70e7

    .line 20
    :cond_10
    iget-object v1, p0, Lci;->activities:Ljava/util/List;

    invoke-static {v1}, Ll;->a(Ljava/util/List;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    .line 21
    return v0
.end method
