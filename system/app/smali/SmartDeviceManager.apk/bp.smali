.class public final Lbp;
.super Lbl;
.source "a"


# instance fields
.field private mApplication:I

.field private mContent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbo;",
            ">;"
        }
    .end annotation
.end field

.field private mId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lbl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplication()I
    .registers 2

    .prologue
    .line 12
    iget v0, p0, Lbp;->mApplication:I

    return v0
.end method

.method public final getContent()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lbp;->mContent:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    .prologue
    .line 20
    iget-wide v0, p0, Lbp;->mId:J

    return-wide v0
.end method

.method public final setApplication(I)V
    .registers 2
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lbp;->mApplication:I

    .line 17
    return-void
.end method

.method public final setContent(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lbp;->mContent:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public final setId(J)V
    .registers 3
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lbp;->mId:J

    .line 25
    return-void
.end method
