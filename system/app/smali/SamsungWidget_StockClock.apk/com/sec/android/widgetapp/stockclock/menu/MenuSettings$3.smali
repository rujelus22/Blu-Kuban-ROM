.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$3;
.super Ljava/lang/Object;
.source "MenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$3;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 270
    return-void
.end method
