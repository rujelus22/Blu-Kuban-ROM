.class Lcom/google/googlenav/ui/wizard/hu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field private final a:LaF/c;


# direct methods
.method public constructor <init>(LaF/c;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hu;->a:LaF/c;

    .line 378
    return-void
.end method


# virtual methods
.method public P_()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hu;->a:LaF/c;

    invoke-virtual {v0}, LaF/c;->J_()V

    .line 383
    return-void
.end method
