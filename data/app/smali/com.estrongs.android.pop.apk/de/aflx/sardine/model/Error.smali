.class public Lde/aflx/sardine/model/Error;
.super Ljava/lang/Object;


# instance fields
.field protected any:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAny()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Error;->any:Ljava/lang/Object;

    return-object v0
.end method

.method public setAny(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Error;->any:Ljava/lang/Object;

    return-void
.end method
