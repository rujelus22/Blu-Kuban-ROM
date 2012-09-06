.class LVO;
.super LTu;
.source "PartialDownloadedFileStoreImpl.java"


# instance fields
.field final synthetic a:LVN;


# direct methods
.method constructor <init>(LVN;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, LVO;->a:LVN;

    invoke-direct {p0}, LTu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LVO;->a:LVN;

    invoke-static {v0, p1, p2}, LVN;->a(LVN;J)J

    .line 104
    return-void
.end method
