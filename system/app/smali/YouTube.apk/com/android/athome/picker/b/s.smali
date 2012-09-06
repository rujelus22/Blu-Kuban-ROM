.class final Lcom/android/athome/picker/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/athome/picker/b/s;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetRxVolumes(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/athome/picker/b/s;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/util/List;)V

    .line 872
    return-void
.end method
