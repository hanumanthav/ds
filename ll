#include<stdio.h>
#include<stdlib.h>

struct node {
    
    int data;
    struct node *next;
} *newnode, *temp, *head;

void insert_at_beg()
{
    head=0;
    newnode=(struct node*)malloc(sizeof(struct node));
    printf("Enter the data\n");
    scanf("%d",&newnode->data);
    newnode->next=0;
    head=newnode;
    return;

    
}


void insert_at_end()
{
   temp=head;
   newnode=(struct node*)malloc(sizeof(struct node));
   printf("Enter the data\n");
   scanf("%d",&newnode->data);
   
   while(temp->next!=0)
   {
       temp=temp->next;

   }
   
   temp->next=newnode;
   return;
  
    
}


void insert_at_pos()
{
    int i=1;
    int pos;
    temp=head;
    newnode=(struct node*)malloc(sizeof(struct node));
    printf("Enter the data\n");
    scanf("%d",&newnode->data);
     printf("Enter the pos\n");
    scanf("%d",&pos);
    
    while(i<pos-1)
    {
        temp=temp->next;
        i++;
        
        
    }
    
    newnode->next=temp->next;
    temp->next=newnode;
    return;
    
    
}

void delete_at_beg()
{
    temp=head;
    head=temp->next;
    free(temp);
    
}


void delete_at_end()
{
    temp=head;
    struct node *prevnode;
    newnode=(struct node*)malloc(sizeof(struct node));
   // prevnode=temp;
    while(temp->next!=0)
    {
      prevnode=temp;
      temp=temp->next;
    }
    
    prevnode->next=0;
    free(temp);
    return;
    
}

void delete_at_pos()
{
    int pos;
    int i=1;
    struct node *nextnode;
    temp=head;
    printf("Enter the pos\n");
    scanf("%d",&pos);
    
    while(i<pos-1)
    {
        temp=temp->next;
        i++;
        
    }
    
    nextnode=temp->next;
    
    temp->next=nextnode->next;
    free(nextnode);

    
    
}

void reverse()
{
    
    struct node *prevnode,*nextnode,*currentnode;
    prevnode=0;
    currentnode=nextnode=head;
    while(nextnode!=0)
    {
        nextnode=nextnode->next;
        currentnode->next=prevnode;
        //currentnode=nextnode;
        prevnode=currentnode;
        currentnode=nextnode;
    }
    
    head=prevnode;
    
    
    
    
    
    
    
    
    
}





void display()
{
    temp=head;
    while(temp!=0)
    {
       
        printf("%d\n",temp->data);
        temp=temp->next;
        
    }
    
    return;
    
    
}





void main()
{
    int rpt=1;
    int choice;
    while(rpt)
    {
     
     printf("Enter the operation u want to perform\n");
     printf("1.Insertion_at_beg\n2.Insertion_at_end\n3.Insertion_at_pos\n4.Delete_at_beg\n5.Delete_at_end\n6.Delete_at_pos\n7.Display\n8.Reverse:");
     scanf("%d",&choice);
     switch(choice)
     {
        case 1:insert_at_beg();
        break;
        case 2:insert_at_end();
        break;
        case 3:insert_at_pos();
        break;
        case 4:delete_at_beg();
        break;
        case 5:delete_at_end();
        break;
        case 6:delete_at_pos();
        break;
        case 7:display();
        break;
        case 8:reverse();
        break;
         
         
         
     }
     
     
     
    printf("Do u want to continue(1,0)\n");
    scanf("%d",&rpt);
        
        
        
        
    }
    
    
    
    
    
}
