.class Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;
.super Ljava/lang/Object;
.source "PageAdvSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageAdvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageAdvSettings;


# direct methods
.method private constructor <init>(Lcom/sprint/dsa/PageAdvSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAdvSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/dsa/PageAdvSettings;Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;-><init>(Lcom/sprint/dsa/PageAdvSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAdvSettings;

    #getter for: Lcom/sprint/dsa/PageAdvSettings;->m_dbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v0}, Lcom/sprint/dsa/PageAdvSettings;->access$0(Lcom/sprint/dsa/PageAdvSettings;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableAll()V

    .line 132
    iget-object v0, p0, Lcom/sprint/dsa/PageAdvSettings$AlertOnClickListener;->this$0:Lcom/sprint/dsa/PageAdvSettings;

    invoke-virtual {v0}, Lcom/sprint/dsa/PageAdvSettings;->finish()V

    .line 133
    return-void
.end method
