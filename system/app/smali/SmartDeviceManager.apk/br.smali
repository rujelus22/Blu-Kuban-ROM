.class public final Lbr;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lci;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "applications"

    iput-object v0, p0, Lbr;->type:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lbr;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lbr;->packages:Ljava/util/List;

    invoke-static {v1}, Ll;->a(Ljava/util/List;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
