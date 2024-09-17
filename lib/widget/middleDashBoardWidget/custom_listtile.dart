import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final VoidCallback onDetailsPressed;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.onDetailsPressed,
  });

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected; 
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(isSelected ? 12.0 : 8.0), 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: isSelected ? Colors.red : const Color.fromARGB(117, 73, 47, 117),
            width: 2.0,
          ),
          color: isSelected ? Colors.red : const Color.fromARGB(117, 73, 47, 117),
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(widget.leadingIcon, color: Colors.white),
          ),
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                widget.subtitle,
                style: const TextStyle(color: Colors.black),
              ),
              TextButton(
                onPressed: widget.onDetailsPressed,
                child: const Text(
                  "See Project details",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          trailing: isSelected
              ? const Icon(
                  Icons.edit,
                  color: Colors.white,
                )
              : null, 
        ),
      ),
    );
  }
}
