.class public final Lcom/coremobility/app/vnotes/jy;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/jy;->c:I

    if-nez p2, :cond_10

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    :cond_10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    return-object v0
.end method
