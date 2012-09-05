.class Lcom/android/calendar/AgendaActivity$13;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupPickView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$13;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$13;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaActivity;->finish()V

    .line 1102
    return-void
.end method
