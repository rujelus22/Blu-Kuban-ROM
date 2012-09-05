.class public Lcom/vlingo/client/util/LoggedCall;
.super Ljava/lang/Object;
.source "LoggedCall.java"


# instance fields
.field private dateOfCall:J

.field private nameOfCaller:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .parameter "name"
    .parameter "dateMS"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vlingo/client/util/LoggedCall;->nameOfCaller:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/vlingo/client/util/LoggedCall;->dateOfCall:J

    .line 28
    return-void
.end method

.method public static newInstance(Ljava/lang/String;J)Lcom/vlingo/client/util/LoggedCall;
    .registers 4
    .parameter "name"
    .parameter "dateMS"

    .prologue
    .line 14
    new-instance v0, Lcom/vlingo/client/util/LoggedCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/vlingo/client/util/LoggedCall;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/vlingo/client/util/LoggedCall;->dateOfCall:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vlingo/client/util/LoggedCall;->nameOfCaller:Ljava/lang/String;

    return-object v0
.end method
