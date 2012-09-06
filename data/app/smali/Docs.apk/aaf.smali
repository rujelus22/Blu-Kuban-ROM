.class Laaf;
.super Ldd;
.source "ThumbnailFetcherImpl.java"


# instance fields
.field final synthetic a:Laae;


# direct methods
.method constructor <init>(Laae;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Laaf;->a:Laae;

    invoke-direct {p0}, Ldd;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Laaf;->a:Laae;

    invoke-virtual {v0}, Laae;->run()V

    .line 80
    return-void
.end method
