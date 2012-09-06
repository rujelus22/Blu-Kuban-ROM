.class public LPb;
.super Ljava/lang/Object;
.source "CollaboratorCandidate.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, LPb;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, LPb;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, LPb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, LPb;->a:Ljava/lang/String;

    return-object v0
.end method
