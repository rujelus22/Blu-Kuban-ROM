.class final LafS;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements LafW;


# instance fields
.field final synthetic a:Lafl;


# direct methods
.method constructor <init>(Lafl;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, LafS;->a:Lafl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LafR;Ljava/lang/CharSequence;)LafV;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, LafT;

    invoke-direct {v0, p0, p1, p2}, LafT;-><init>(LafS;LafR;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic a(LafR;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, LafS;->a(LafR;Ljava/lang/CharSequence;)LafV;

    move-result-object v0

    return-object v0
.end method
