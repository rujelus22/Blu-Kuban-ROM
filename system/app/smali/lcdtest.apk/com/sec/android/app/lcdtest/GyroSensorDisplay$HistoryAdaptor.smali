.class Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "GyroSensorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/GyroSensorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    .line 127
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;

    .line 135
    .local v4, item:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;
    if-nez p2, :cond_6e

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 137
    .local v7, li:Landroid/view/LayoutInflater;
    const v12, 0x7f03000e

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 142
    .end local v7           #li:Landroid/view/LayoutInflater;
    .local v6, layout:Landroid/widget/LinearLayout;
    :goto_1c
    invoke-virtual {v4}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->getCount()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, countString:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->getValueX()Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, xVal:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->getValueY()Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, yVal:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;->getValueZ()Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, zVal:Ljava/lang/String;
    const v12, 0x7f080018

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, countView:Landroid/widget/TextView;
    const v12, 0x7f080019

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 149
    .local v3, idView:Landroid/widget/TextView;
    const v12, 0x7f08001a

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 150
    .local v5, itemView:Landroid/widget/TextView;
    const v12, 0x7f08001b

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 152
    .local v8, resultView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const/high16 v12, -0x1

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const v12, -0xff0100

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    const v12, -0xffff01

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    return-object v6

    .end local v1           #countString:Ljava/lang/String;
    .end local v2           #countView:Landroid/widget/TextView;
    .end local v3           #idView:Landroid/widget/TextView;
    .end local v5           #itemView:Landroid/widget/TextView;
    .end local v6           #layout:Landroid/widget/LinearLayout;
    .end local v8           #resultView:Landroid/widget/TextView;
    .end local v9           #xVal:Ljava/lang/String;
    .end local v10           #yVal:Ljava/lang/String;
    .end local v11           #zVal:Ljava/lang/String;
    :cond_6e
    move-object/from16 v6, p2

    .line 139
    check-cast v6, Landroid/widget/LinearLayout;

    .restart local v6       #layout:Landroid/widget/LinearLayout;
    goto :goto_1c
.end method
