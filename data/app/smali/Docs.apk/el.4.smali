.class public Lel;
.super Ljava/lang/Object;
.source "DocListConfiguration.java"


# instance fields
.field private final a:Lek;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lek;

    invoke-direct {v0}, Lek;-><init>()V

    iput-object v0, p0, Lel;->a:Lek;

    .line 84
    iget-object v0, p0, Lel;->a:Lek;

    invoke-static {v0, p1}, Lek;->a(Lek;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public a()Lek;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lel;->a:Lek;

    return-object v0
.end method
