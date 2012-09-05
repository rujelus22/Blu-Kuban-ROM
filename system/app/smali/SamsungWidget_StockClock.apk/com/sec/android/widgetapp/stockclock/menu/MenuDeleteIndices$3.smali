.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$3;
.super Ljava/lang/Object;
.source "MenuDeleteIndices.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    const v1, 0x7f0b0074

    if-ne v0, v1, :cond_c

    .line 296
    packed-switch p2, :pswitch_data_1c

    .line 314
    :cond_c
    :goto_c
    return-void

    .line 299
    :pswitch_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$002(I)I

    goto :goto_c

    .line 303
    :pswitch_12
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$002(I)I

    goto :goto_c

    .line 307
    :pswitch_17
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->access$002(I)I

    goto :goto_c

    .line 296
    :pswitch_data_1c
    .packed-switch 0x7f0b0075
        :pswitch_12
        :pswitch_d
        :pswitch_17
    .end packed-switch
.end method
