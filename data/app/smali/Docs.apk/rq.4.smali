.class public Lrq;
.super LTu;
.source "LocalFileIntentOpener.java"


# instance fields
.field final synthetic a:LZN;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LZN;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lrq;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    iput-object p2, p0, Lrq;->a:LZN;

    iput-object p3, p0, Lrq;->a:Ljava/lang/String;

    invoke-direct {p0}, LTu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lrq;->a:LZN;

    iget-object v5, p0, Lrq;->a:Ljava/lang/String;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, LZN;->a(JJLjava/lang/String;)V

    .line 252
    return-void
.end method
