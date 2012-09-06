.class public Lcom/google/googlenav/ui/view/y;
.super Lcom/google/googlenav/ui/view/p;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1174
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/google/googlenav/ui/view/p;-><init>(IILjava/lang/String;)V

    .line 1175
    iput-object p1, p0, Lcom/google/googlenav/ui/view/y;->h:Ljava/lang/String;

    .line 1176
    return-void
.end method
