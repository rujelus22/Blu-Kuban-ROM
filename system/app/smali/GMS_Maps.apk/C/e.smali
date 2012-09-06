.class LC/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LC/d;


# direct methods
.method constructor <init>(LC/d;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, LC/e;->a:LC/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, LC/e;->a:LC/d;

    const/4 v1, 0x1

    iput v1, v0, LC/d;->a:I

    .line 35
    iget-object v0, p0, LC/e;->a:LC/d;

    const-string v1, "gps_fixup_provider"

    const-string v2, "gps"

    iget-object v3, p0, LC/e;->a:LC/d;

    iget v3, v3, LC/d;->a:I

    invoke-virtual {v0, v1, v2, v3}, LC/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
