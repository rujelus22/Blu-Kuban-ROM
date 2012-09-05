.class Lcom/android/calendar/AlertAdapter$AlertItem;
.super Ljava/lang/Object;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertItem"
.end annotation


# instance fields
.field checked:Z

.field final synthetic this$0:Lcom/android/calendar/AlertAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/calendar/AlertAdapter$AlertItem;->this$0:Lcom/android/calendar/AlertAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/calendar/AlertAdapter$AlertItem;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/calendar/AlertAdapter$AlertItem;->checked:Z

    .line 195
    return-void
.end method
