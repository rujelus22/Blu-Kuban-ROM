.class final Lcom/anddoes/launcher/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hm;->a:Lcom/anddoes/launcher/hb;

    iput-wide p2, p0, Lcom/anddoes/launcher/hm;->b:J

    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 1360
    return-void
.end method
