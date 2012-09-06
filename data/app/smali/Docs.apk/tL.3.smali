.class public LtL;
.super LTu;
.source "UploadProcess.java"


# instance fields
.field private final a:Lua;


# direct methods
.method public constructor <init>(Lua;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, LTu;-><init>()V

    .line 41
    iput-object p1, p0, LtL;->a:Lua;

    .line 42
    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LtL;->a:Lua;

    invoke-interface {v0, p1, p2, p3, p4}, Lua;->a(JJ)V

    .line 47
    return-void
.end method
