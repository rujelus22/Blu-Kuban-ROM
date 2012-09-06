.class public LNs;
.super Ljava/lang/Object;
.source "PunchModelImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, LNs;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, LNs;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, LNs;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, LNs;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(LNs;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LNs;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LNs;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LNs;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(LNs;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LNs;->c:Ljava/lang/String;

    return-object v0
.end method
