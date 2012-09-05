.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 2
    .parameter "format"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_18

    .line 76
    :goto_4
    return-object v0

    .line 61
    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 62
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 65
    :pswitch_b
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 66
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 69
    :pswitch_11
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0           #Result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 70
    .restart local v0       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 58
    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_5
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method
