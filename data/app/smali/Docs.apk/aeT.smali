.class public LaeT;
.super LadI;
.source "DiscussionsRequest.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Laes;
        a = "oauth_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, LadI;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LaeT;
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, LaeT;->a:Ljava/lang/String;

    .line 117
    return-object p0
.end method
