.class Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$3;
.super Ljava/lang/Object;
.source "Svc_Dbg_Dump.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V
    .registers 2
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$3;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$3;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->finish()V

    .line 896
    return-void
.end method
