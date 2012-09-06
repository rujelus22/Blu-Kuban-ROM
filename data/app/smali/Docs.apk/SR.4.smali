.class public final LSR;
.super Ljava/lang/Object;
.source "DocumentFeedAndFolderFeedFilter.java"


# static fields
.field public static final a:LSR;

.field public static final b:LSR;

.field public static final c:LSR;

.field public static final d:LSR;


# instance fields
.field final a:LTi;

.field final b:LTi;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, LSR;

    sget-object v1, LTi;->a:LTi;

    sget-object v2, LTi;->a:LTi;

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    sput-object v0, LSR;->a:LSR;

    .line 47
    new-instance v0, LSR;

    sget-object v1, LTi;->a:LTi;

    sget-object v2, LTi;->b:LTi;

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    sput-object v0, LSR;->b:LSR;

    .line 53
    new-instance v0, LSR;

    sget-object v1, LTi;->b:LTi;

    sget-object v2, LTi;->a:LTi;

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    sput-object v0, LSR;->c:LSR;

    .line 59
    new-instance v0, LSR;

    sget-object v1, LTi;->b:LTi;

    sget-object v2, LTi;->b:LTi;

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    sput-object v0, LSR;->d:LSR;

    return-void
.end method

.method constructor <init>(LTi;LTi;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTi;

    iput-object v0, p0, LSR;->a:LTi;

    .line 30
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTi;

    iput-object v0, p0, LSR;->b:LTi;

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)LSR;
    .registers 4
    .parameter

    .prologue
    .line 66
    new-instance v0, LSR;

    invoke-static {p0}, LTi;->a(Ljava/lang/String;)LTi;

    move-result-object v1

    sget-object v2, LTi;->b:LTi;

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    return-object v0
.end method

.method static a(Ljava/util/Date;Ljava/util/Date;Lle;)LSR;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, LSR;

    invoke-static {p0, p2}, LTi;->a(Ljava/util/Date;Lle;)LTi;

    move-result-object v1

    invoke-static {p1, p2}, LTi;->a(Ljava/util/Date;Lle;)LTi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    return-object v0
.end method

.method public static a(Lnk;Ljava/lang/String;)LSR;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    sget-object v0, LSR;->a:LSR;

    .line 122
    invoke-virtual {p0}, Lnk;->a()LSR;

    move-result-object v1

    invoke-virtual {v0, v1}, LSR;->a(LSR;)LSR;

    move-result-object v0

    .line 123
    if-eqz p1, :cond_14

    .line 124
    invoke-static {p1}, LSR;->c(Ljava/lang/String;)LSR;

    move-result-object v1

    invoke-virtual {v0, v1}, LSR;->a(LSR;)LSR;

    move-result-object v0

    .line 127
    :cond_14
    return-object v0
.end method

.method public static b(Ljava/lang/String;)LSR;
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-static {p0}, LTi;->a(Ljava/lang/String;)LTi;

    move-result-object v0

    .line 77
    new-instance v1, LSR;

    invoke-direct {v1, v0, v0}, LSR;-><init>(LTi;LTi;)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;)LSR;
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-static {p0}, LTi;->b(Ljava/lang/String;)LTi;

    move-result-object v0

    .line 85
    new-instance v1, LSR;

    invoke-direct {v1, v0, v0}, LSR;-><init>(LTi;LTi;)V

    return-object v1
.end method

.method public static d(Ljava/lang/String;)LSR;
    .registers 4
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, LTi;->c(Ljava/lang/String;)LTi;

    move-result-object v0

    .line 93
    new-instance v1, LSR;

    sget-object v2, LTi;->b:LTi;

    invoke-direct {v1, v0, v2}, LSR;-><init>(LTi;LTi;)V

    return-object v1
.end method


# virtual methods
.method public a(LSR;)LSR;
    .registers 6
    .parameter

    .prologue
    .line 34
    new-instance v0, LSR;

    iget-object v1, p0, LSR;->a:LTi;

    iget-object v2, p1, LSR;->a:LTi;

    invoke-virtual {v1, v2}, LTi;->a(LTi;)LTi;

    move-result-object v1

    iget-object v2, p0, LSR;->b:LTi;

    iget-object v3, p1, LSR;->b:LTi;

    invoke-virtual {v2, v3}, LTi;->a(LTi;)LTi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LSR;-><init>(LTi;LTi;)V

    return-object v0
.end method
