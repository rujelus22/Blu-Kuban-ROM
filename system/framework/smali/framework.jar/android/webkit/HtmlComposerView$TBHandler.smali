.class public Landroid/webkit/HtmlComposerView$TBHandler;
.super Landroid/os/Handler;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1885
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$TBHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1887
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 1892
    :goto_5
    return-void

    .line 1889
    :pswitch_6
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$TBHandler;->this$0:Landroid/webkit/HtmlComposerView;

    sget v1, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_5

    .line 1887
    :pswitch_data_e
    .packed-switch 0x500
        :pswitch_6
    .end packed-switch
.end method
